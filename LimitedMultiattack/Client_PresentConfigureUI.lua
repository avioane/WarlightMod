
function Client_PresentConfigureUI(rootParent)
	local initialValue = Mod.Settings.MaxAttacks;
	if initialValue == nil then
		initialValue = 5;
	end
    
   	local horz = UI.CreateHorizontalLayoutGroup(rootParent);
	UI.CreateLabel(horz).SetText('Attacks per Multiattack(0=Infinity) ');
   	InputMaxAttacks = UI.CreateNumberInputField(horz).SetSliderMinValue(0).SetSliderMaxValue(100).SetValue(initialValue);
	horz = UI.CreateHorizontalLayoutGroup(rootParent);
	UI.CreateLabel(horz).SetText('If one of the following checkboxes is activated, multiattacks will be enabled only in the turns where you play one of the following cards. The cards will still have their old effect.');
	horz = UI.CreateHorizontalLayoutGroup(rootParent);
	initialValue = Mod.Settings.ReinforcementCard;
	if initialValue == nil then
		initialValue = false;
	end
	InputReinforcementCard = UI.CreateCheckBox(horz).SetText('Activate when playing Reinforcement Card').SetIsChecked(initialValue);
	horz = UI.CreateHorizontalLayoutGroup(rootParent);
	initialValue = Mod.Settings.GiftCard;
	if initialValue == nil then
		initialValue = false;
	end
	InputGiftCard = UI.CreateCheckBox(horz).SetText('Activate when playing Gift Card').SetIsChecked(initialValue);
	horz = UI.CreateHorizontalLayoutGroup(rootParent);
	initialValue = Mod.Settings.AirliftCard;
	if initialValue == nil then
		initialValue = false;
	end
	InputAirliftCard = UI.CreateCheckBox(horz).SetText('Activate when playing Airlift Card').SetIsChecked(initialValue);
	horz = UI.CreateHorizontalLayoutGroup(rootParent);
	initialValue = Mod.Settings.ReconnaisanceCard;
	if initialValue == nil then
		initialValue = false;
	end
	InputReconnaisanceCard = UI.CreateCheckBox(horz).SetText('Activate when playing Reconnaisance Card').SetIsChecked(initialValue);
	horz = UI.CreateHorizontalLayoutGroup(rootParent);
	initialValue = Mod.Settings.SpyCard;
	if initialValue == nil then
		initialValue = false;
	end
	InputSpyCard = UI.CreateCheckBox(horz).SetText('Activate when playing Spy Card').SetIsChecked(initialValue);
end
