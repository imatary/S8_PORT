.class Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;
.super Ljava/lang/Object;
.source "AutoAdjust.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;,
        Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;
    }
.end annotation


# static fields
.field private static final COM_SAMSUNG_ANDROID_MEDIA_IMAGEPROCESSING_SEM_AUTO_ENHANCE:Ljava/lang/String; = "com.samsung.android.media.imageprocessing.SemAutoEnhance"

.field private static final COM_SAMSUNG_ANDROID_SAIV_IMAGEPROCESSING_AUTO_ENHANCE:Ljava/lang/String; = "com.samsung.android.saiv.imageprocessing.AutoEnhance"

.field private static final IS_HERO:I = 0x1

.field private static final IS_OTHERS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoAdjust"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAutoAdjustTask:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;

.field private mFilePath:Ljava/lang/String;

.field private mIsPreviousAutoAdjustOn:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

.field private mOnProgressListener:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mIsPreviousAutoAdjustOn:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mFilePath:Ljava/lang/String;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;-><init>(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mAutoAdjustTask:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/Model;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mIsPreviousAutoAdjustOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mIsPreviousAutoAdjustOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->executeChangeCover()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->setEnhancedImage(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mOnProgressListener:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method private enhanceImage()I
    .locals 13

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string/jumbo v9, "AutoAdjust"

    const-string/jumbo v10, "enhanceImage_Auto adjust is called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

    invoke-interface {v9}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mFilePath:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "com.samsung.android.media.imageprocessing.SemAutoEnhance"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_0
    const-string/jumbo v9, "enhanceImage"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/io/File;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/graphics/Bitmap;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePhotoDoctor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_1
    const/4 v8, 0x4

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v2, v8

    const/4 v8, 0x1

    aput-object v0, v2, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mActivity:Landroid/app/Activity;

    aput-object v9, v2, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_0
    :goto_2
    return v7

    :cond_1
    const-string/jumbo v9, "com.samsung.android.saiv.imageprocessing.AutoEnhance"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_3
    const-string/jumbo v8, "AutoAdjust"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_3
.end method

.method private executeChangeCover()I
    .locals 11

    sget-object v7, Lcom/sec/android/gallery3d/util/GalleryUtils;->sLockForAutoAdjust:Ljava/lang/Object;

    monitor-enter v7

    const/4 v5, -0x1

    :try_start_0
    sget-boolean v6, Lcom/sec/android/gallery3d/common/ApiHelper;->USE_SDL_FOR_AUTO_ADJUST:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "AutoAdjust"

    const-string/jumbo v8, "ChangeCover_Auto adjust is called"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "com.samsung.android.media.imageprocessing.SemAutoEnhance"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-string/jumbo v6, "changeCover"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/io/File;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v0, v6

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mActivity:Landroid/app/Activity;

    aput-object v8, v0, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v5

    :cond_0
    :try_start_3
    const-string/jumbo v6, "com.samsung.android.saiv.imageprocessing.AutoEnhance"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    const-string/jumbo v6, "AutoAdjust"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :cond_1
    :try_start_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mFilePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v8}, Lcom/sec/android/secphoto/AutoEnhance;->CoverChange(Ljava/lang/String;Landroid/content/Context;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_6
    const-string/jumbo v6, "AutoAdjust"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private setEnhancedImage(Landroid/graphics/Bitmap;)I
    .locals 4

    sget-object v2, Lcom/sec/android/gallery3d/util/GalleryUtils;->sLockForAutoAdjust:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/sec/android/gallery3d/common/ApiHelper;->USE_SDL_FOR_AUTO_ADJUST:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->enhanceImage()I

    move-result v0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, v3}, Lcom/sec/android/secphoto/AutoEnhance;->EnhanceImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method setModel(Lcom/sec/samsung/gallery/view/detailview/Model;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

    return-void
.end method

.method setProgressListener(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mOnProgressListener:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->mAutoAdjustTask:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
