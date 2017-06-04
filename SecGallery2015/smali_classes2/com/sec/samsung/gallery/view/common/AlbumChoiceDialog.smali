.class public Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "AlbumChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumChoiceDialog"


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mCtx:Landroid/content/Context;

.field private final mDialogFragment:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

.field private mEvent:Lcom/sec/samsung/gallery/core/Event;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/core/Event;)V
    .locals 7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->list:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mCtx:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mCtx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$1;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AlbumChoiceDialog"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;[Lcom/sec/android/gallery3d/data/MediaSet;)[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;Lcom/sec/samsung/gallery/core/Event;)Lcom/sec/samsung/gallery/core/Event;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    return-object v0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->setTitle(I)V

    return-void
.end method

.method public showDialog()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v1, v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlbumChoiceDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
