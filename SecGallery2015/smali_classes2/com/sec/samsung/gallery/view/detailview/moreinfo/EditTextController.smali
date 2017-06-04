.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;
.super Ljava/lang/Object;
.source "EditTextController.java"


# static fields
.field private static final INVALID_CHAR:[Ljava/lang/String;

.field private static final MAX_RENAME_INPUT_LENGTH:I = 0x32

.field private static final MAX_USER_TAG_INPUT_LENGTH:I = 0x40


# instance fields
.field private mInvalidToast:Landroid/widget/Toast;

.field private final mLengthFilter:Landroid/text/InputFilter$LengthFilter;

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mLongTextToast:Landroid/widget/Toast;

.field private final mTextCheckFilter:Landroid/text/InputFilter;

.field private misUserTagInputType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->INVALID_CHAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/widget/EditText;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->misUserTagInputType:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mTextCheckFilter:Landroid/text/InputFilter;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->misUserTagInputType:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    :goto_0
    invoke-direct {v1, p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->misUserTagInputType:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mTextCheckFilter:Landroid/text/InputFilter;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mInvalidToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mInvalidToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->misUserTagInputType:Z

    return v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mLongTextToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->mLongTextToast:Landroid/widget/Toast;

    return-object p1
.end method


# virtual methods
.method public getMaxRenameInputLength()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method
