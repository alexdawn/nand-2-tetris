var steps;
var step;
var get_ram;
var get_rom;
var get_screen;
var keyboard_to_ram;
var ram;
var rom;
var screen;
var timer;
var isPlaying = false;
var ticks = 0;
var clocksTicks = 100_000;
var triggerInterval = 10; // ms
var lastTime = 0;
var time = performance.now();

const scale = 2;
const canvas = document.getElementById("canvas");
canvas.style.width = (512 * scale).toString() + 'px';
canvas.style.height = (256 * scale).toString() + 'px';
const ctx = canvas.getContext("2d");

Module.onRuntimeInitialized = async () => {
    steps = Module.cwrap("steps", null, ["number"]);
    step = Module.cwrap("step", "number", null);
    get_ram = Module.cwrap("get_ram", "number", null);
    get_rom = Module.cwrap("get_rom", "number", null);
    get_screen = Module.cwrap("get_screen", "number", null);
    keyboard_to_ram = Module.cwrap("keyboard_to_ram", null, ["number"]);
    get_pc = Module.cwrap("get_pc", "number", null);
    reset = Module.cwrap("reset", null, null);

    ram = new Int16Array(Module.HEAP16.buffer, get_ram(), 32768);
    rom = new Uint16Array(Module.HEAP16.buffer, get_rom(), 65536);
    screen = new Uint8ClampedArray(Module.HEAP8.buffer, get_screen(), 512 * 256 * 4);
    screen.set(new Array(512 * 256).fill([0,0,0,255]).flat(), 0);

    const baseUrl = location.pathname.substring(0, location.pathname.lastIndexOf("/") + 1)
    setRom(loadServerRom(location.origin + baseUrl + 'bin/Pong.hack'));
    const inputElement = document.getElementById("myFile");
    inputElement.addEventListener("change", uploadRom, false);
}

function pressStep() {
    step();
    ticks++;
    refresh();
}

function pressSteps() {
    clocksTicks = Number(document.getElementById("ticks").value);
    steps(clocksTicks);
    ticks += clocksTicks;
    refresh();
}

function refresh() {
    document.querySelector('.time').innerText = (clocksTicks / ((time - lastTime) / 1_000) / 1_000_000)
        .toFixed(2) + ' Mhz';
    document.querySelector('.pc').innerText =  'PC: ' + get_pc();
    document.querySelector('.ticks').innerText =  'ticks: ' + ticks;
    lastTime = time;
    time = performance.now();
    const img = new ImageData(screen, 512, 256);
    ctx.putImageData(img, 0, 0, 0, 0, 512, 256);
}

function pressPlayPause() {
    isPlaying ? pressStop() : pressPlay();
}

function pressPlay() {
    document.getElementById("play").setAttribute("class", "fa fa-pause");
    document.getElementById("play").innerText = "Pause";
    timer = setInterval(pressSteps, triggerInterval);
    isPlaying = true;
}

function pressStop() {
    document.getElementById("play").setAttribute("class", "fa fa-play");
    document.getElementById("play").innerText = "Play";
    clearInterval(timer); 
    isPlaying = false;
}

function pressReset() {
    ticks = 0;
    reset();
    refresh();
}

function pressResize() {
    var canvas = document.getElementById("canvas");
    if (canvas.requestFullScreen)
        canvas.requestFullScreen();
    else if(canvas.webkitRequestFullScreen)
        canvas.webkitRequestFullScreen();
    else if(canvas.mozRequestFullScreen)
        canvas.mozRequestFullScreen();
}

function loadServerRom(filePath) {
    var result = null;
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET", filePath, false);
    xmlhttp.send();
    if (xmlhttp.status == 200) {
        result = xmlhttp.responseText;
    }
    return result;
}

function setRom(program) {
    const prog = program.split('\n');
    const progBytes = prog.map(line => {
        return parseInt(line.split('//')[0].trim(), 2);
    });
    rom.set(progBytes, 0);
}

function uploadRom() {
    const inputElement = document.getElementById("myFile");
    const file = inputElement.files[0];
    const reader = new FileReader();
    reader.readAsText(file);
    reader.addEventListener("load", () => {
        const content = document.querySelector('.rom');
        content.innerText = reader.result;
        setRom(reader.result);
    }, false);
}

document.addEventListener('keydown', function(event) {
    if (convertKeyToHack(event.key) === null) {
        console.log(event);
    }

    keyboard_to_ram(convertKeyToHack(event.key));
    if (event.target.tagName !== 'TEXTAREA' && event.target.tagName !== 'INPUT') {
        event.preventDefault();
    }
});

document.addEventListener('keyup', function(event) {
    // console.log(event);
    if (convertKeyToHack(event.key) === ram[24576]) {
        console.log("release");
        keyboard_to_ram(0);
    }
    if (event.target.tagName !== 'TEXTAREA' && event.target.tagName !== 'INPUT') {
        event.preventDefault();
    }
});

document.querySelector('.rom').addEventListener('keyup', event => {
    const numberOfLines = event.target.value.split('\n').length;
    document.querySelector('.line-numbers').innerHTML = Array(numberOfLines)
        .fill('<span></span>')
        .join('');
});

function convertKeyToHack(code) {
    key = {
        " ": 32,
        "!": 33,
        "\"": 34,
        "#": 35,
        "$": 36,
        "%": 37,
        "&": 38,
        "'": 39,
        "(": 40,
        ")": 41,
        "*": 42,
        "+": 43,
        ",": 44,
        "-": 45,
        ".": 46,
        "/": 47,
        "0": 48,
        "1": 49,
        "2": 50,
        "3": 51,
        "4": 52,
        "5": 53,
        "6": 54,
        "7": 55,
        "8": 56,
        "9": 57,
        ":": 58,
        ";": 59,
        "<": 60,
        "=": 61,
        ">": 62,
        "?": 63,
        "@": 64,
        "A": 65,
        "B": 66,
        "C": 67,
        "D": 68,
        "E": 69,
        "F": 70,
        "G": 71,
        "H": 72,
        "I": 73,
        "J": 74,
        "K": 75,
        "L": 76,
        "M": 77,
        "N": 78,
        "O": 79,
        "P": 80,
        "Q": 81,
        "R": 82,
        "S": 83,
        "T": 84,
        "U": 85,
        "V": 86,
        "W": 87,
        "X": 88,
        "Y": 89,
        "Z": 90,
        "[": 91,
        "\\": 92,
        "]": 93,
        "^": 94,
        "_": 95,
        "`": 96,
        "a": 97,
        "b": 98,
        "c": 99,
        "d": 100,
        "e": 101,
        "f": 102,
        "g": 103,
        "h": 104,
        "i": 105,
        "j": 106,
        "k": 107,
        "l": 108,
        "m": 109,
        "n": 110,
        "o": 111,
        "p": 112,
        "q": 113,
        "r": 114,
        "s": 115,
        "t": 116,
        "u": 117,
        "v": 118,
        "w": 119,
        "x": 120,
        "y": 121,
        "z": 122,
        "{": 123,
        "|": 124,
        "}": 125,
        "~": 126,
        "Delete": 127,
        "Enter": 128,
        "Backspace": 129,
        "ArrowLeft": 130,
        "ArrowUp": 131,
        "ArrowRight": 132,
        "Down": 133,
        "Home": 134,
        "End": 135,
        "PageUp": 136,
        "PageDown": 137,
        "Insert": 138,
        "Delete": 139,
        "Escape": 140,
        "F1": 141,
        "F2": 142,
        "F3": 143,
        "F4": 144,
        "F5": 145,
        "F6": 146,
        "F7": 147,
        "F8": 148,
        "F9": 149,
        "F10": 150,
        "F11": 151,
        "F12": 152
    }
    return key[code];
}
