local _, ns = ...

-- English is the fallback for any client language not listed below.
local L = {
    FIX_BUTTON = "Fix Resolution",
    DETECTED   = "Detected: %dx%d",
    TARGET     = "Target: %dx%d",
    NO_API     = "this version of WoW does not provide the required functions; the addon is disabled.",
    OK         = "resolution is correct (%dx%d).",
}

local translations = {
    frFR = {
        FIX_BUTTON = "Corriger la résolution",
        DETECTED   = "Détectée : %dx%d",
        TARGET     = "Cible : %dx%d",
        NO_API     = "cette version de WoW ne fournit pas les fonctions nécessaires ; l'addon est désactivé.",
        OK         = "la résolution est correcte (%dx%d).",
    },
    deDE = {
        FIX_BUTTON = "Auflösung korrigieren",
        DETECTED   = "Erkannt: %dx%d",
        TARGET     = "Ziel: %dx%d",
        NO_API     = "diese WoW-Version stellt die benötigten Funktionen nicht bereit; das Addon ist deaktiviert.",
        OK         = "die Auflösung ist korrekt (%dx%d).",
    },
    esES = {
        FIX_BUTTON = "Corregir resolución",
        DETECTED   = "Detectada: %dx%d",
        TARGET     = "Objetivo: %dx%d",
        NO_API     = "esta versión de WoW no ofrece las funciones necesarias; el addon está desactivado.",
        OK         = "la resolución es correcta (%dx%d).",
    },
    itIT = {
        FIX_BUTTON = "Correggi risoluzione",
        DETECTED   = "Rilevata: %dx%d",
        TARGET     = "Obiettivo: %dx%d",
        NO_API     = "questa versione di WoW non fornisce le funzioni necessarie; l'addon è disattivato.",
        OK         = "la risoluzione è corretta (%dx%d).",
    },
    ptBR = {
        FIX_BUTTON = "Corrigir resolução",
        DETECTED   = "Detectada: %dx%d",
        TARGET     = "Alvo: %dx%d",
        NO_API     = "esta versão do WoW não fornece as funções necessárias; o addon está desativado.",
        OK         = "a resolução está correta (%dx%d).",
    },
    ruRU = {
        FIX_BUTTON = "Исправить разрешение",
        DETECTED   = "Обнаружено: %dx%d",
        TARGET     = "Цель: %dx%d",
        NO_API     = "эта версия WoW не предоставляет нужных функций; аддон отключён.",
        OK         = "разрешение правильное (%dx%d).",
    },
    koKR = {
        FIX_BUTTON = "해상도 수정",
        DETECTED   = "감지됨: %dx%d",
        TARGET     = "목표: %dx%d",
        NO_API     = "이 WoW 버전은 필요한 기능을 제공하지 않아 애드온이 비활성화되었습니다.",
        OK         = "해상도가 올바릅니다 (%dx%d).",
    },
    zhCN = {
        FIX_BUTTON = "修复分辨率",
        DETECTED   = "检测到：%dx%d",
        TARGET     = "目标：%dx%d",
        NO_API     = "此版本的魔兽世界未提供所需功能，插件已禁用。",
        OK         = "分辨率正确（%dx%d）。",
    },
    zhTW = {
        FIX_BUTTON = "修正解析度",
        DETECTED   = "偵測到：%dx%d",
        TARGET     = "目標：%dx%d",
        NO_API     = "此版本的魔獸世界未提供所需功能，插件已停用。",
        OK         = "解析度正確（%dx%d）。",
    },
}
translations.esMX = translations.esES -- same wording works for both
-- enGB clients report "enUS", so they use the English defaults.

local locale = GetLocale and GetLocale() or "enUS"
local selected = translations[locale]
if selected then
    for key, value in pairs(selected) do
        L[key] = value
    end
end

ns.L = L
