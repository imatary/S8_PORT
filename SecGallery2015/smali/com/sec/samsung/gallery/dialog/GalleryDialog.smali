.class public abstract Lcom/sec/samsung/gallery/dialog/GalleryDialog;
.super Landroid/app/DialogFragment;
.source "GalleryDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryDialog"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTag:Ljava/lang/String;

.field private final mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/samsung/gallery/view/ViewObservable;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ViewObservable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public dismissDialog()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GalleryDialog"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method notifyObservers(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ViewObservable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public showDialog()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GalleryDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
