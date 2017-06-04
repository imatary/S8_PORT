.class public Lcom/arcsoft/beautyface/GetResultFromCamera;
.super Ljava/lang/Object;
.source "GetResultFromCamera.java"


# static fields
.field public static final ACTION_TAKE_PHOTO_WITH_CAMERA:I = 0x1

.field private static final IMG_PAHT_SAVE:Ljava/lang/String;

.field private static final JPEG_FILE_PREFIX:Ljava/lang/String; = "IMG_"

.field private static final JPEG_FILE_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final TAG:Ljava/lang/String; = "ArcSoft_App_GetResultFromCamera"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/PicPortrait/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/beautyface/GetResultFromCamera;->IMG_PAHT_SAVE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mCurrentPhotoPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/arcsoft/beautyface/GetResultFromCamera;->getAlbumDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v4, ".jpg"

    invoke-static {v2, v4, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private getAlbumDir()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/arcsoft/beautyface/GetResultFromCamera;->IMG_PAHT_SAVE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CameraSample"

    const-string/jumbo v2, "failed to create directory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private setUpPhotoFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/arcsoft/beautyface/GetResultFromCamera;->createImageFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mCurrentPhotoPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchTakePictureIntent()V
    .locals 5

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/arcsoft/beautyface/GetResultFromCamera;->setUpPhotoFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mCurrentPhotoPath:Ljava/lang/String;

    const-string/jumbo v3, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mCurrentPhotoPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Ljava/lang/String;
    .locals 4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mCurrentPhotoPath:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string/jumbo v1, "ArcSoft_App_GetResultFromCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/arcsoft/beautyface/GetResultFromCamera;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
