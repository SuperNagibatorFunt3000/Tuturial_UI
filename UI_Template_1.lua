local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperNagibatorFunt3000/UI-Library/main/Library.lua"))()
В данный момент стоит тема "RJTheme3"
Можно использовать любую из других тем приведённых ниже
"RJTheme1"
"RJTheme2"
"RJTheme3"
"RJTheme4"
"RJTheme5"
"RJTheme6"
"RJTheme7"
"RJTheme8"

-- Создать окно UI
local Window = Library.CreateLib("Name", "RJTheme3")

-- Секция
local Tab = Window:NewTab("TabName")

-- Подсекция
local Section = Tab:NewSection("Section Name")

-- Заголовок
Section:NewLabel("LabelText")

-- Кнопка
Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)

-- Переключатель
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-- Слайдер
Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- Текст Бокс
Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)

-- Бинд на клавиши
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)

-- Дропдаун
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
