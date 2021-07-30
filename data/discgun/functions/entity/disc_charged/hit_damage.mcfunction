
# 爆發
    execute if entity @s[type=end_crystal] run summon tnt

# 何で攻撃されたのかタグ付与
    tag @s add D.Gun_Hit.Disc_Charged

# ヘッドショットテスト
    execute anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=armor_stand,tag=D.Gun_Bullet,dx=0] run function discgun:entity/bullet/hit_headshot

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# ダメージを設定
    execute if entity @s[type=!end_crystal] run data merge storage disc_score_damage: {Damage:8.0}
    execute if entity @s[type=!end_crystal] run function disc_score_damage:api/attack
