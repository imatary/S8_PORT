.class public Lcom/android/phone/photoring/PhotoringPhrasesEdit;
.super Landroid/app/Activity;
.source "PhotoringPhrasesEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;,
        Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;,
        Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mCaptureFile:Ljava/lang/String;


# instance fields
.field private gUtil:Lcom/android/phone/photoring/GifUtil;

.field private id:J

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isAgif:Z

.field private mByteCnt:Landroid/widget/TextView;

.field private mContentType:I

.field mHandler:Landroid/os/Handler;

.field mNewResize:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

.field mResizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

.field private mResizingdialog:Landroid/app/ProgressDialog;

.field private mScreenMode:I

.field private mThumbHeight:I

.field private mUriVideos:Landroid/net/Uri;

.field mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

.field private menuDlg:Landroid/app/AlertDialog;

.field private mtvPhrase:Landroid/widget/EditText;

.field private mtvTxt:Landroid/widget/TextView;

.field private mvImage:Landroid/widget/ImageView;

.field private phrase:Lcom/android/phone/photoring/PhotoringPhrase;


# direct methods
.method static synthetic -get0(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Lcom/android/phone/photoring/PhotoringPhrase;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->Pick_Video_From_Trim()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/photoring/PhotoringPhrasesEdit;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->attachMenuSelected(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->delItem()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    iput v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iput-wide v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->id:J

    new-instance v1, Lcom/android/phone/photoring/PhotoringPhrase;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/android/phone/photoring/PhotoringPhrase;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    iput-boolean v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    iput-object v4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Pick_Video_From_Trim()V
    .locals 12

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUriVideos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "PhotoringPhrasesEdit"

    const-string/jumbo v2, "ContentResolver is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v10, -0x1

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_data =\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string/jumbo v1, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    cmp-long v1, v10, v2

    if-eqz v1, :cond_3

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    :cond_3
    const-string/jumbo v2, "PhotoringPhrasesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUriVideos : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    const-string/jumbo v2, "photoring_temp_img.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v1, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "..."

    goto :goto_1
.end method

.method private attachMenuSelected(I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getImageIntentFromGallery()Landroid/content/Intent;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getNewCaptureImageFile()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mCaptureFile:Ljava/lang/String;

    sget-object v4, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mCaptureFile:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/phone/photoring/PhotoringUtil;->getUriFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->getImageIntentFromCamera(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoIntentFromGallery()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoIntentFromCamera()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->checkRemainingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    const-string/jumbo v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "PhotoringPhrasesEdit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No activity found for intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private delItem()V
    .locals 4

    new-instance v0, Lcom/android/phone/photoring/PhotoRingDB;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-wide v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-wide v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    const v1, 0x7f0d05c3

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dismissMenuDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private displayToast(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private resizeVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-direct {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    const/16 v1, 0x7cf

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setMaxOutputSize(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setEncodingCodecs(II)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->getOutputFileSize()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v0, "PhotoringPhrasesEdit"

    const-string/jumbo v1, "resizingVideo IOException"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "0/1"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    new-instance v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    invoke-direct {v0, p0, p2, v7, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Ljava/lang/String;ILcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Lcom/samsung/android/media/codec/SemVideoTranscoder;Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;Landroid/os/Handler;Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mNewResize:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mNewResize:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->start()V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v3, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectedPhrase.. = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v2, :cond_0

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "callmessage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "contentPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->finish()V

    return-void

    :cond_0
    const-string/jumbo v2, "..."

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "..."

    goto :goto_1
.end method

.method private setImageToView()V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "photoring_temp_img.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    iget v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string/jumbo v2, "photoring_data_img_thumb.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setImageToView(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImageToView path : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v2, :cond_2

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "file://"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v2, p1}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v2, p1}, Lcom/android/phone/photoring/GifUtil;->setImagePath(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "..."

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v2, "photoring_temp_img.png"

    invoke-static {p0, v0, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    iget v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    invoke-static {v0, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string/jumbo v2, "photoring_data_img_thumb.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "PhotoringPhrasesEdit"

    const-string/jumbo v3, "photo is null "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setPhrasePreviewInit()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v2, "file://"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iput v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput-object v4, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput-object v4, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showAttachMenuDialog()V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->dismissMenuDialog()V

    new-instance v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$8;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$8;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    invoke-static {p0, v0}, Lcom/android/phone/photoring/PhotoringUtil;->createAttachMenuDialog(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 28

    const/4 v9, 0x0

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->dismissMenuDialog()V

    const-string/jumbo v25, "PhotoringPhrasesEdit"

    const-string/jumbo v26, "onActivityResult"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v25, "PhotoringPhrasesEdit"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "requestCode = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", resultCode = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "croptemp.png"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/phone/photoring/PhotoringUtil;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    if-nez v16, :cond_2

    const-string/jumbo v25, "PhotoringPhrasesEdit"

    const-string/jumbo v26, "Returned image is null"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v25, "photoring_temp_img.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v26, "PhotoringPhrasesEdit"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mUriCamera by MCIDConstants.REQUEST_IMAGE_FROM_GALLERY : "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-boolean v25, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v25, :cond_4

    move-object/from16 v25, v12

    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/phone/photoring/PhotoringUtil;->getImageFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v25, "PhotoringPhrasesEdit"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "isAgif : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    const-string/jumbo v25, "feature_lgt"

    invoke-static/range {v25 .. v25}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    const v25, 0x7f0d092d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v25, "..."

    goto :goto_1

    :cond_5
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    const-string/jumbo v25, "photoring_temp_img.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Lcom/android/phone/photoring/PhotoringUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/GifUtil;->setImagePath(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    :cond_6
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/phone/photoring/PhotoringUtil;->getCropIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/16 v25, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v25, "PhotoringPhrasesEdit"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "No activity found for intent: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    sget-object v25, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mCaptureFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getUriFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v26, "PhotoringPhrasesEdit"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mUriCamera by MCIDConstants.REQUEST_IMAGE_FROM_CAMERA : "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-boolean v25, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v25, :cond_7

    move-object/from16 v25, v12

    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v25, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mCaptureFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->scanMediaFile(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/phone/photoring/PhotoringUtil;->getCropIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/16 v25, 0x3

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const-string/jumbo v25, "PhotoringPhrasesEdit"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "No activity found for intent: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v25, "..."

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "file://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    new-instance v7, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v7}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->isNeedProcessTrim(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v15, v0, :cond_a

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v25, "android.intent.action.TRIM_SHARE"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_1

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    const-string/jumbo v25, "uri"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v25, 0x6

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    const-string/jumbo v25, "PhotoringPhrasesEdit"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "No activity found for intent : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v15, v0, :cond_d

    new-instance v13, Ljava/io/File;

    const-string/jumbo v25, "/storage/emulated/0/photoring/"

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_b

    const-string/jumbo v25, "PhotoringPhrasesEdit"

    const-string/jumbo v26, "make dir."

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    const/16 v25, 0x1

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    const/16 v25, 0x1

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_b
    new-instance v14, Ljava/io/File;

    const-string/jumbo v25, "/storage/emulated/0/photoring/photoring_temp.mp4"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v25, "/storage/emulated/0/photoring/photoring_temp.mp4"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v11, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->resizeVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v15, v0, :cond_e

    const-wide/16 v22, 0x7cf

    const/16 v24, 0x280

    const/16 v21, 0x1e0

    const-string/jumbo v5, "photoring"

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v25, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "com.samsung.app.newtrim/com.samsung.app.newtrim.trimactivity.TrimActivity"

    invoke-static/range {v25 .. v25}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v25, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v25, "uri"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v25, "VIDEO_OUTPUT_SIZE"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v25, "VIDEO_OUTPUT_WIDTH"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v25, "VIDEO_OUTPUT_HEIGHT"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v25, "CALLER_APP"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v25, 0x6

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v8

    const-string/jumbo v25, "PhotoringPhrasesEdit"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "No activity found for intetn : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    const-string/jumbo v25, "photoring_temp_img.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->Pick_Video_From_Trim()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v10

    return v10

    :pswitch_0
    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v10, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v10, "file://"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "file://"

    const-string/jumbo v11, ""

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.android.phone.fileprovider"

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11, v12}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v10, "video/*"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v10, "PhotoringPhrasesEdit"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t play video "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v12, v12, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v10}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v10, "PhotoringPhrasesEdit"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IllegalArgumentException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :pswitch_1
    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v10, v10, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v10, v10, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v11, "file://"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v10, "PhotoringPhrasesEdit"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onContextItemSelected uri : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "ims_photoring_use_nxp"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.TRIM_SHARE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "option"

    const-string/jumbo v11, "PostProcessedTrim"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string/jumbo v10, "uri"

    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v10, 0x6

    :try_start_1
    invoke-virtual {p0, v6, v10}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v10, "PhotoringPhrasesEdit"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No activity found for intent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v10, v10, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const-wide/16 v8, 0x7cf

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "com.samsung.app.newtrim/com.samsung.app.newtrim.trimactivity.TrimActivity"

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "VIDEO_OUTPUT_SIZE"

    invoke-virtual {v6, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v10, "VIDEO_OUTPUT_WIDTH"

    const/16 v11, 0x280

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "VIDEO_OUTPUT_HEIGHT"

    const/16 v11, 0x1e0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "CALLER_APP"

    const-string/jumbo v11, "photoring"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :pswitch_2
    iput v13, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput-object v12, v10, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iput-object v12, v10, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v10}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    iput-boolean v13, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v5, "PhotoringPhrasesEdit"

    const-string/jumbo v8, "<<onCreate>>"

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f04009b

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0119

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mThumbHeight:I

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    const-string/jumbo v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v5, 0x7f1001dd

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const v5, 0x7f1001de

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mByteCnt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    new-instance v8, Lcom/android/phone/photoring/PhotoringUtil$PhraseTextWatcher;

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mByteCnt:Landroid/widget/TextView;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/phone/photoring/PhotoringUtil$PhraseTextWatcher;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v5, 0x1

    new-array v3, v5, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;

    invoke-direct {v5, p0}, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    aput-object v5, v3, v8

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const-string/jumbo v8, "disableEmoticonInput=true"

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a005d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0096

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    const v5, 0x7f1001df

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->registerForContextMenu(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    new-instance v8, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;

    invoke-direct {v8, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/phone/photoring/GifUtil;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-direct {v5, v8}, Lcom/android/phone/photoring/GifUtil;-><init>(Landroid/widget/ImageView;)V

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    const v5, 0x7f1001e0

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const v8, 0x7f0d0a01

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "type"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    iget v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v9, 0x2

    if-eq v5, v9, :cond_5

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-eqz v5, :cond_2

    const-string/jumbo v5, "id"

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->id:J

    :cond_2
    iget v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-eqz v5, :cond_4

    iget-wide v8, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->id:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_4

    new-instance v2, Lcom/android/phone/photoring/PhotoRingDB;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-wide v8, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->id:J

    invoke-virtual {v2, v8, v9}, Lcom/android/phone/photoring/PhotoRingDB;->getPhraseById(J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v8, 0x4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v8, v8, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_6

    const/4 v5, 0x4

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    iget v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_c

    const v5, 0x7f0d091a

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setTitle(I)V

    :goto_3
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    new-instance v8, Lcom/android/phone/photoring/PhotoringPhrasesEdit$5;

    invoke-direct {v8, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$5;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    const-wide/16 v6, 0x0

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v8, "file://"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v8, "photoring_temp_img.png"

    invoke-static {p0, v5, v8}, Lcom/android/phone/photoring/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    :goto_4
    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_b

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const v8, 0x7f0d0926

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_a
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mUriVideos:Landroid/net/Uri;

    const-string/jumbo v8, "photoring_temp_img.png"

    invoke-static {p0, v5, v8}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setImageToView()V

    goto/16 :goto_2

    :cond_c
    iget v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/phone/photoring/PhotoringPhrasesEdit$3;

    invoke-direct {v8, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$3;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v5, 0x7f0d0919

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setTitle(I)V

    goto/16 :goto_3

    :cond_d
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/phone/photoring/PhotoringPhrasesEdit$4;

    invoke-direct {v8, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$4;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v5, 0x7f0d0918

    invoke-virtual {p0, v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setTitle(I)V

    goto/16 :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f0d090e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0d050e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x3

    const v1, 0x7f0d0510

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v0, 0x7f0d0906

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f0d0511

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0d09d6

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x4

    const v1, 0x7f0d0510

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x5

    const v1, 0x7f0d0638

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "PhotoringPhrasesEdit"

    const-string/jumbo v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

    const/4 v13, 0x2

    const v5, 0x7f0d0927

    const/16 v3, 0x2f

    const/4 v12, 0x0

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    new-instance v0, Lcom/android/phone/photoring/PhotoRingDB;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    const v1, 0x102002c

    if-ne v9, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->finish()V

    return v4

    :cond_0
    packed-switch v9, :pswitch_data_0

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->showAttachMenuDialog()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-ne v1, v4, :cond_2

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "photoring_temp_img.png"

    invoke-static {v2, v3, v10}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "photoring_data_img_thumb.png"

    const-string/jumbo v4, ".png"

    const-string/jumbo v5, "thumb.png"

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget v3, v3, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPhraseExist(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v3, v3, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/android/phone/photoring/PhotoRingDB;->insertPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v1, 0x7f0d0637

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->finish()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-ne v1, v13, :cond_3

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "photoring_data_img_thumb.png"

    const-string/jumbo v4, ".png"

    const-string/jumbo v5, "thumb.png"

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d092c

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f0d092b

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v11, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v10, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v10, :cond_7

    invoke-static {p0, v10}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v11}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :goto_2
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "photoring_temp_img.png"

    invoke-static {v2, v3, v10}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "photoring_data_img_thumb.png"

    invoke-static {v2, v3, v11}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget v3, v3, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPhraseExist(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v6

    const-wide/16 v2, -0x1

    cmp-long v1, v6, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-wide v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_b

    :cond_6
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-wide v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v3, v3, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v4, v4, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget v5, v5, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/photoring/PhotoRingDB;->updatePhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const v1, 0x7f0d0637

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->finish()V

    goto/16 :goto_0

    :cond_7
    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, ".png"

    const-string/jumbo v2, "thumb.png"

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_8
    iget v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-ne v1, v13, :cond_a

    if-nez v11, :cond_9

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v1, ".png"

    const-string/jumbo v2, "thumb.png"

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    :goto_4
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "photoring_data_img_thumb.png"

    invoke-static {v2, v3, v11}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    goto :goto_3

    :cond_9
    invoke-static {p0, v11}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_a
    iget v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mContentType:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0d092c

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_0

    :cond_b
    const v1, 0x7f0d092b

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d09d5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/photoring/PhotoringPhrasesEdit$6;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$6;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    const v3, 0x7f0d02ca

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/photoring/PhotoringPhrasesEdit$7;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$7;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    const v3, 0x7f0d02c7

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    if-ne v1, v4, :cond_e

    const-string/jumbo v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_5
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_d
    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_e
    const v1, 0x7f0d0928

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :pswitch_4
    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "PhotoringPhrasesEdit"

    const-string/jumbo v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v0}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mScreenMode:I

    if-ne v3, v4, :cond_4

    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "PhotoringPhrasesEdit"

    const-string/jumbo v1, "<<onResume>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->setPhrasePreviewInit()V

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->isAgif:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v0}, Lcom/android/phone/photoring/GifUtil;->startAnimate()V

    :cond_0
    return-void
.end method
