.class public Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;
.super Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;
.source "Unknown"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSpriteView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Lcom/android/keyguard/sec/opentheme/common/Sprite;

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v3, v4, v0, v6, v6}, Lcom/android/keyguard/sec/opentheme/common/Sprite;-><init>(FFFF)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/keyguard/sec/opentheme/common/Sprite;->setBitmap(Landroid/content/Context;IIF)V

    new-instance v4, Lcom/android/keyguard/sec/opentheme/common/Sprite$SimpleModifier;

    invoke-direct {v4}, Lcom/android/keyguard/sec/opentheme/common/Sprite$SimpleModifier;-><init>()V

    invoke-virtual {p8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/keyguard/sec/opentheme/common/Sprite$SimpleModifier;->setStartIndex(I)V

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/opentheme/common/Sprite;->addModifier(Lcom/android/keyguard/sec/opentheme/common/SpriteModifier;)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public setOnTop(I)V
    .locals 0

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->setZOrderOnTop()V

    goto :goto_0
.end method
