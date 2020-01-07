local items = 
{
    { Id = 1, KeyName = "stage1TimeMin", value = 50, },
    { Id = 2, KeyName = "stage1TimeMax", value = 80, },
    { Id = 3, KeyName = "stage2TimeMin", value = 30, },
    { Id = 4, KeyName = "stage2TimeMax", value = 50, },
    { Id = 5, KeyName = "stage3TimeMin", value = 30, },
    { Id = 6, KeyName = "stage3TimeMax", value = 50, },
    { Id = 7, KeyName = "stage4TimeMin", value = 30, },
    { Id = 8, KeyName = "stage4TimeMax", value = 50, },
    { Id = 9, KeyName = "stage5PromptTime", value = 10, },
    { Id = 10, KeyName = "roomManMaxNumber", value = 4, },
    { Id = 11, KeyName = "attackSlowDuration", value = 0, },
    { Id = 12, KeyName = "attackSlowEffect", value = 0, },
    { Id = 13, KeyName = "lassoSize", value = 10, },
    { Id = 14, KeyName = "bulletSize", value = 10, },
    { Id = 15, KeyName = "lassoAttackSpeed", value = 10, },
    { Id = 16, KeyName = "bulletAttackSpeed", value = 10, },
    { Id = 17, KeyName = "grabTime", value = 0, },
    { Id = 18, KeyName = "robCattleWaitTime", value = 0, },
    { Id = 19, KeyName = "robCattleProgress", value = 10, },
    { Id = 20, KeyName = "robCattleEffectInterval", value = 0, },
    { Id = 21, KeyName = "perClickReduceProgress", value = 1, },
    { Id = 22, KeyName = "automaticProgressReductionTime", value = 0, },
    { Id = 23, KeyName = "automaticProgressReductionValue", value = 1, },
    { Id = 24, KeyName = "initialRobCattleWeight", value = 5, },
    { Id = 25, KeyName = "perClickIncreaseWeight", value = 1, },
    { Id = 26, KeyName = "skillEnergyMax", value = 15, },
    { Id = 27, KeyName = "skillDuration", value = 30, },
    { Id = 28, KeyName = "bulletQuantityMax", value = 20, },
}

local idItems = 
{
    [1] = items[1],
    [2] = items[2],
    [3] = items[3],
    [4] = items[4],
    [5] = items[5],
    [6] = items[6],
    [7] = items[7],
    [8] = items[8],
    [9] = items[9],
    [10] = items[10],
    [11] = items[11],
    [12] = items[12],
    [13] = items[13],
    [14] = items[14],
    [15] = items[15],
    [16] = items[16],
    [17] = items[17],
    [18] = items[18],
    [19] = items[19],
    [20] = items[20],
    [21] = items[21],
    [22] = items[22],
    [23] = items[23],
    [24] = items[24],
    [25] = items[25],
    [26] = items[26],
    [27] = items[27],
    [28] = items[28],
}

local keyItems = 
{
    ["stage1TimeMin"] = items[1],
    ["stage1TimeMax"] = items[2],
    ["stage2TimeMin"] = items[3],
    ["stage2TimeMax"] = items[4],
    ["stage3TimeMin"] = items[5],
    ["stage3TimeMax"] = items[6],
    ["stage4TimeMin"] = items[7],
    ["stage4TimeMax"] = items[8],
    ["stage5PromptTime"] = items[9],
    ["roomManMaxNumber"] = items[10],
    ["attackSlowDuration"] = items[11],
    ["attackSlowEffect"] = items[12],
    ["lassoSize"] = items[13],
    ["bulletSize"] = items[14],
    ["lassoAttackSpeed"] = items[15],
    ["bulletAttackSpeed"] = items[16],
    ["grabTime"] = items[17],
    ["robCattleWaitTime"] = items[18],
    ["robCattleProgress"] = items[19],
    ["robCattleEffectInterval"] = items[20],
    ["perClickReduceProgress"] = items[21],
    ["automaticProgressReductionTime"] = items[22],
    ["automaticProgressReductionValue"] = items[23],
    ["initialRobCattleWeight"] = items[24],
    ["perClickIncreaseWeight"] = items[25],
    ["skillEnergyMax"] = items[26],
    ["skillDuration"] = items[27],
    ["bulletQuantityMax"] = items[28],
}

local data = { Items = items, IdItems = idItems, KeyItems = keyItems, }
function data:getById(id)
    return self.IdItems[id]
end
function data:getByKey(key)
    return self.KeyItems[key]
end
return data
