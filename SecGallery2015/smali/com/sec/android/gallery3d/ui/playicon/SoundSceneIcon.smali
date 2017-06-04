.class public Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "SoundSceneIcon.java"


# static fields
.field private static final SOUNDSCENE_IC_DURATION_NOT_SHOWING:J = 0x5dcL

.field private static final SOUNDSCENE_IC_DURATION_SHOWING:J = 0x1f4L


# instance fields
.field private mNextTimeMillis:J

.field private mPreviousTimeMillis:J

.field private mShowState:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mShowState:Z

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FAST_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f0201b2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mIconResId:I

    const v0, 0x7f0a0403

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4029"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 4

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->isPlayingState:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sec/samsung/gallery/controller/SoundScene;->mEndTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-wide v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mNextTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mPreviousTimeMillis:J

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mShowState:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mShowState:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mShowState:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mPreviousTimeMillis:J

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mNextTimeMillis:J

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mUpdateListener:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon$UpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mUpdateListener:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon$UpdateListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon$UpdateListener;->invalidatePhotoIcon()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mPreviousTimeMillis:J

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mNextTimeMillis:J

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundScene(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mContext:Landroid/content/Context;

    const v3, 0x7f0a048a

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SoundScene;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/controller/SoundScene;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/controller/SoundScene;->play(Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 v1, 0x1

    goto :goto_0
.end method
