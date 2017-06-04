.class public Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;
.super Lcom/sec/android/gallery3d/ui/ButtonIconView;
.source "ZoomInOutImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"


# instance fields
.field private mDisabledIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

.field private mIsCommentsViewVisible:Z

.field private mIsEnable:Z

.field private mIsZoomIn:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsZoomIn:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsEnable:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsCommentsViewVisible:Z

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsZoomIn:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$ZoomInOutImageIcon;-><init>(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;Lcom/sec/android/gallery3d/ui/ZoomInOutImageView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsEnable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsZoomIn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mDisabledIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;)Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mDisabledIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsCommentsViewVisible:Z

    return v0
.end method


# virtual methods
.method public getEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsEnable:Z

    return v0
.end method

.method public isCommentsViewVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsCommentsViewVisible:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->mIsEnable:Z

    return-void
.end method
