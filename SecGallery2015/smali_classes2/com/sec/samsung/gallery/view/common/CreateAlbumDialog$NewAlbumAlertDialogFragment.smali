.class Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "CreateAlbumDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewAlbumAlertDialogFragment"
.end annotation


# instance fields
.field private MAX_FOLDER_NAME_LENGTH:I

.field mAlertDialog:Landroid/app/AlertDialog;

.field private final mBucketId:I

.field private mClipVisible:Z

.field private mConfirmDialogForBackPress:Landroid/app/AlertDialog;

.field private final mContact:Ljava/lang/String;

.field private final mCtx:Landroid/content/Context;

.field private final mIsLiveChannel:Z

.field private final mIsNewEvent:Z

.field private final mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/content/Context;ZLjava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mClipVisible:Z

    const/16 v1, 0x32

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->MAX_FOLDER_NAME_LENGTH:I

    new-instance v1, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$1;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x50

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->MAX_FOLDER_NAME_LENGTH:I

    :cond_0
    iput-boolean p7, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsLiveChannel:Z

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mItemList:Ljava/util/ArrayList;

    iput p5, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mBucketId:I

    iput-object p6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mContact:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->MAX_FOLDER_NAME_LENGTH:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->checkNameExisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mBucketId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsLiveChannel:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->createLeaveAlertDailog()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mClipVisible:Z

    return v0
.end method

.method private checkAlbumNameExisted(Ljava/lang/String;)Z
    .locals 9

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->getStorageForNewAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "CreateAlbumDialog"

    const-string/jumbo v7, "File is exist already! create directory fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0171

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v6, "CreateAlbumDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "CreateAlbumDialog"

    const-string/jumbo v7, "Directory don\'t have write permission!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a047f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->checkMediaFolder(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->checkMediaFolder(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const-string/jumbo v6, "CreateAlbumDialog"

    const-string/jumbo v7, "Media directory exist!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a003a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private checkEventNameExisted(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTitleList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2800(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTitleList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2800(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTitleList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2800(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CreateAlbumDialog"

    const-string/jumbo v1, "Event name is exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkMediaFolder(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v10

    const-string/jumbo v1, "substr(_data, 0, length(_data)-length(_display_name)) as dir_path"

    aput-object v1, v2, v9

    const-string/jumbo v3, "dir_path = ? COLLATE NOCASE"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "CreateAlbumDialog"

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v1, v9

    :goto_0
    return v1

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    move v1, v10

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v1, "CreateAlbumDialog"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private checkNameExisted(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v1, "CreateAlbumDialog"

    const-string/jumbo v2, "Album name is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->checkEventNameExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mPreviousName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mShownError:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$302(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100111

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->checkAlbumNameExisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method private createLeaveAlertDailog()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a038a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0386

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$12;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$12;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$13;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$13;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private logDCState(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "CreateStory"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "CreateAlbum"

    goto :goto_0
.end method


# virtual methods
.method public isFromEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$600(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSDCardRemovedIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    const-string/jumbo v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const-string/jumbo v13, "CreateAlbumDialog"

    const-string/jumbo v14, "start create album dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->NewAlbumUsingPickMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-nez v13, :cond_5

    const v14, 0x7f040033

    const/4 v13, 0x0

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v5, v14, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    const v13, 0x7f120093

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/support/design/widget/TextInputLayout;

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v14, v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$402(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/TextInputLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    const v13, 0x7f120094

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v14, v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$502(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/widget/EditText;)Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    const v14, 0x84001

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v13, "maxLength"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->MAX_FOLDER_NAME_LENGTH:I

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTooLongToast:Landroid/widget/Toast;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$700(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/Toast;

    move-result-object v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->USE_DREAM_CHANNEL_VIEW_UX:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$800()Z

    move-result v13

    if-eqz v13, :cond_7

    const v13, 0x7f0a0268

    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->MAX_FOLDER_NAME_LENGTH:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v13, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTooLongToast:Landroid/widget/Toast;
    invoke-static {v14, v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$702(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    :goto_2
    new-instance v9, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v9}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-interface {v9, v13}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-interface {v7, v13}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->isAccessoryKeyboardState(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    new-instance v14, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$2;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->selectAll()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mPreviousName:Ljava/lang/String;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v14}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mPreviousName:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1202(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    new-instance v6, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$3;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    new-instance v8, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$4;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->MAX_FOLDER_NAME_LENGTH:I

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$4;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    const-string/jumbo v14, "inputType=filename;disableEmoticonInput=true"

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/text/InputFilter;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    new-instance v14, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$5;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setFocusable(Z)V

    const v12, 0x7f0a02b8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    if-eqz v13, :cond_3

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportAddToEventMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_b

    const v12, 0x7f0a00d3

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mOperationType:I
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1700(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)I

    move-result v13

    sget v14, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mOperationType:I
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1700(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)I

    move-result v13

    sget v14, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-ne v13, v14, :cond_c

    :cond_4
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0a0080

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0a00d0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    const/4 v14, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mNewAlbumDialogIsReady:Z
    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1802(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v14, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v13

    new-instance v14, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$9;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget-object v13, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->logDCState(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    const-string/jumbo v13, "CreateAlbumDialog"

    const-string/jumbo v14, "end create album dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v13

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkUseSDCard(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z

    if-nez v13, :cond_6

    const-string/jumbo v13, "CreateAlbumDialog"

    const-string/jumbo v14, "locations"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v14, 0x7f040034

    const/4 v13, 0x0

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v5, v14, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v13, 0x7f120095

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    const v14, 0x7f0f0037

    const v15, 0x7f040106

    invoke-static {v13, v14, v15}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    const v13, 0x7f040105

    invoke-virtual {v2, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v11, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v11, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {v11}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    const v15, 0x7f10028b

    invoke-virtual {v14, v15}, Landroid/content/Context;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v13, "CreateAlbumDialog"

    const-string/jumbo v14, "a location"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v14, 0x7f040033

    const/4 v13, 0x0

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v5, v14, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    const/4 v14, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->setStorageForNewAlbum(Landroid/content/Context;Z)V
    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$200(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_7
    const v13, 0x7f0a04a1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0250

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->MAX_FOLDER_NAME_LENGTH:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTooLongToast:Landroid/widget/Toast;
    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$702(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mAlbumName:Ljava/lang/String;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1000(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mAlbumName:Ljava/lang/String;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1000(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;

    move-result-object v10

    :goto_6
    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->getSuggestedName()Ljava/lang/String;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_b
    const v12, 0x7f0a00d1

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mOperationType:I
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1700(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)I

    move-result v13

    sget v14, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v13, v14, :cond_d

    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0a00bc

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/high16 v14, 0x1040000

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    const/4 v14, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mNewAlbumDialogIsReady:Z
    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1802(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v14, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$7;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v14, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$8;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_5

    :cond_d
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0a00d0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/high16 v14, 0x1040000

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_7
.end method

.method public onDestroyView()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$600(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CreateAlbumDialog"

    const-string/jumbo v2, "mSDCardRemovedReceiver was not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->logDCState(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mNewAlbumDialogIsReady:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1802(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    return-void
.end method

.method public onPause()V
    .locals 8

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMassDialog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableClipboardEx:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ClipBoardManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ClipBoardManagerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;->isShowing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mClipVisible:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mReceiveTime:J
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x96

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->isSipVisible:Z
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3302(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3600(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3600(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    const/4 v3, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3602(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->hideSoftInput(Landroid/os/IBinder;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$000(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/os/IBinder;)V

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->isItemExist()Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3000(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->isFromEvent()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->existPrivateItemsOnly()Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->dismissDialog()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f120094

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->setSipBroadcastReceiver()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3200(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->isSipVisible:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3300(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$10;

    invoke-direct {v2, p0, v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$10;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;Landroid/widget/EditText;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;

    return-void
.end method
