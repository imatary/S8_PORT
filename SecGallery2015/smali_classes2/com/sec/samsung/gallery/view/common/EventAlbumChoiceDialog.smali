.class public Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "EventAlbumChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventAlbumChoiceDialog"


# instance fields
.field private mAlbumMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDialogFragment:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

.field private final mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

.field private final mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mAlbumMap:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->loadAlbumData()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mAlbumMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Lcom/sec/android/gallery3d/data/EventAlbumManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->loadAlbumData()V

    return-void
.end method

.method private loadAlbumData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventAlbumMap()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mAlbumMap:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->dismissDialog()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->setTitle(I)V

    return-void
.end method

.method public showDialog()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v1, v3}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EventAlbumChoiceDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
