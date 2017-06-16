.class public Lcom/sec/android/mimage/photoretouching/Decoration/InputText;
.super Landroid/widget/EditText;
.source "InputText.java"


# static fields
.field public static final INPUT_TEXT_LENGTH:I = 0x14

.field private static final MAX_CHAR_EXCEPTION:I = 0xa


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPositivieButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mPositivieButton:Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mPositivieButton:Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mPositivieButton:Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/InputText;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mPositivieButton:Landroid/widget/Button;

    return-object v0
.end method

.method private init()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->selectAll()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->requestFocus()Z

    const/high16 v5, 0x10000000

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->setImeOptions(I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07009d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getLabelStyleNum()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->getMaxCharacters(I)I

    move-result v1

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;

    invoke-direct {v0, p0, v1, v1, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/InputText;IILandroid/widget/Toast;)V

    new-array v5, v9, [Landroid/text/InputFilter;

    aput-object v0, v5, v8

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$2;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/InputText;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public getMaxCharacters(I)I
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xa

    :cond_1
    return v0
.end method

.method public setCurEditTextContext(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->setSelection(I)V

    return-void
.end method

.method public setPositiveButton(Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->mPositivieButton:Landroid/widget/Button;

    return-void
.end method
