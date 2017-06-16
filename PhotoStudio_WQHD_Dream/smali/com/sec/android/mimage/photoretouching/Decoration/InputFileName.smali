.class public Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;
.super Landroid/widget/EditText;
.source "InputFileName.java"


# static fields
.field static final INPUT_TEXT_LENGTH:I = 0x32


# instance fields
.field private mChangeFileName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mChangeFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mChangeFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mChangeFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findFileNumberInString(Ljava/lang/String;)I
    .locals 7

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    add-int/lit8 v2, v1, -0x2

    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v0, -0x30

    or-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x28

    if-ne v0, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mChangeFileName:Ljava/lang/String;

    :cond_3
    move v4, v3

    goto :goto_0
.end method

.method private init()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->selectAll()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->requestFocus()Z

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x33

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->setFilters([Landroid/text/InputFilter;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public setCurEditTextContext(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->setSelection(I)V

    return-void
.end method

.method public setNewFile(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->findFileNumberInString(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ").jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->mChangeFileName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/InputFileName;->setTextKeepState(Ljava/lang/CharSequence;)V

    return-void
.end method
