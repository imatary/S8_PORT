.class public Lcom/sec/android/gallery3d/ui/EmptySetDrawer;
.super Ljava/lang/Object;
.source "EmptySetDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mPopupDescription:Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mDisplayHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mDisplayWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->isPersonPick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->isContactPick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->isLandscape()Z

    move-result v0

    return v0
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    new-instance v1, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;-><init>(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mPopupDescription:Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;

    return-void
.end method

.method private isContactPick()Z
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "caller_id_pick"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLandscape()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mDisplayWidth:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mDisplayHeight:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPersonPick()Z
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$1;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public removeLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mPopupDescription:Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mPopupDescription:Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->removeLayout()V

    :cond_0
    return-void
.end method

.method public setLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mPopupDescription:Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mPopupDescription:Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->setLayout()V

    :cond_0
    return-void
.end method

.method public setScreenSize(Landroid/graphics/Point;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mDisplayHeight:I

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->mDisplayWidth:I

    return-void
.end method
