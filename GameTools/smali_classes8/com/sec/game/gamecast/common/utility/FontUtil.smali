.class public Lcom/sec/game/gamecast/common/utility/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;
    }
.end annotation


# static fields
.field private static SECRobotoLight_Bold:Landroid/graphics/Typeface;

.field private static SECRobotoLight_Regular:Landroid/graphics/Typeface;

.field private static defaultFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static processsViewGroup(Landroid/view/ViewGroup;ILcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/sec/game/gamecast/common/utility/FontUtil;->setCustomFont(Landroid/widget/TextView;Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p2}, Lcom/sec/game/gamecast/common/utility/FontUtil;->setCustomFont(Landroid/view/ViewGroup;Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static setCustomFont(Landroid/view/View;Landroid/content/res/AssetManager;Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;)V
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil;->SECRobotoLight_Bold:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil;->SECRobotoLight_Regular:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil;->defaultFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "fonts/SECRobotoLight-Bold.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil;->SECRobotoLight_Bold:Landroid/graphics/Typeface;

    const-string/jumbo v0, "fonts/SECRobotoLight-Regular.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil;->SECRobotoLight_Regular:Landroid/graphics/Typeface;

    const-string/jumbo v0, "fonts/Roboto-Regular.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil;->defaultFont:Landroid/graphics/Typeface;

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p2}, Lcom/sec/game/gamecast/common/utility/FontUtil;->setCustomFont(Landroid/view/ViewGroup;Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, p2}, Lcom/sec/game/gamecast/common/utility/FontUtil;->setCustomFont(Landroid/widget/TextView;Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;)V

    goto :goto_0
.end method

.method private static setCustomFont(Landroid/view/ViewGroup;Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/FontUtil;->processsViewGroup(Landroid/view/ViewGroup;ILcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;)V

    return-void
.end method

.method private static setCustomFont(Landroid/widget/TextView;Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;)V
    .locals 2

    sget-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil$1;->$SwitchMap$com$sec$game$gamecast$common$utility$FontUtil$FONTTYPE:[I

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil;->SECRobotoLight_Bold:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil;->SECRobotoLight_Regular:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
