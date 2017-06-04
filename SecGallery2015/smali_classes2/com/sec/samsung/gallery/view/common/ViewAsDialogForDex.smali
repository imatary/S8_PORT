.class public Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;
.super Ljava/lang/Object;
.source "ViewAsDialogForDex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final FROM_ALBUM_VIEW:I = 0x1

.field public static final FROM_TIME_VIEW:I = 0x0

.field private static final LAYOUT_LEVEL_0:I = 0x0

.field private static final LAYOUT_LEVEL_1:I = 0x1

.field private static final LAYOUT_LEVEL_2:I = 0x2

.field private static final LAYOUT_LEVEL_3:I = 0x3

.field private static final mAlbumViewColumnCount:[I

.field private static final mTimeViewColumnCount:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFrom:I

.field private mViewAsDialog:Landroid/app/AlertDialog;

.field private mViewAsOnItemSelectedListener:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mTimeViewColumnCount:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mAlbumViewColumnCount:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x8
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x6
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mViewAsDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mFrom:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->dismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mViewAsOnItemSelectedListener:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mViewAsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mViewAsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mViewAsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initRadioButton(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mFrom:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->initRadioButtonForTime(Landroid/widget/RadioGroup;)V

    :goto_1
    packed-switch p2, :pswitch_data_1

    const v0, 0x7f120262

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->initRadioButtonForAlbum(Landroid/widget/RadioGroup;)V

    goto :goto_1

    :pswitch_2
    const v0, 0x7f120263

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f120264

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_4
    const v0, 0x7f120265

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private initRadioButtonForAlbum(Landroid/widget/RadioGroup;)V
    .locals 7

    const v6, 0x7f0a037b

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v1, 0x7f120262

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    const v1, 0x7f120263

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    const v1, 0x7f120264

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mAlbumViewColumnCount:[I

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f120265

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mAlbumViewColumnCount:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRadioButtonForTime(Landroid/widget/RadioGroup;)V
    .locals 8

    const v7, 0x7f0a037b

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v1, 0x7f120262

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f120263

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mTimeViewColumnCount:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f120264

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mTimeViewColumnCount:[I

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f120265

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mTimeViewColumnCount:[I

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setOnCheckedChangeListener(Landroid/widget/RadioGroup;)V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;-><init>(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public setViewAsOnItemSelectedListener(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mViewAsOnItemSelectedListener:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;

    return-void
.end method

.method public showDialog(I)V
    .locals 6

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f040113

    const/4 v4, 0x0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f120261

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-direct {p0, v2, p1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->initRadioButton(Landroid/widget/RadioGroup;I)V

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->setOnCheckedChangeListener(Landroid/widget/RadioGroup;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mContext:Landroid/content/Context;

    const v5, 0x7f0a04cb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0080

    new-instance v5, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$1;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$1;-><init>(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mViewAsDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->mViewAsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
