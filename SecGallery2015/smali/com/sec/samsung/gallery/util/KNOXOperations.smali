.class public Lcom/sec/samsung/gallery/util/KNOXOperations;
.super Landroid/os/AsyncTask;
.source "KNOXOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/util/KNOXOperations$MediaObjectComparator;,
        Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final OP_MOVE_TO_KNOX:I = 0x0

.field public static final OP_REMOVE_FROM_KNOX:I = 0x1

.field private static final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private static mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/util/KNOXOperations$MediaObjectComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/util/KNOXOperations$MediaObjectComparator;-><init>(Lcom/sec/samsung/gallery/util/KNOXOperations$1;)V

    sput-object v0, Lcom/sec/samsung/gallery/util/KNOXOperations;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sput-object p1, Lcom/sec/samsung/gallery/util/KNOXOperations;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/KNOXOperations;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/KNOXOperations;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lcom/sec/samsung/gallery/util/KNOXOperations;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    sget-object v5, Lcom/sec/samsung/gallery/util/KNOXOperations;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    invoke-interface {v5, v2}, Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;->handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/KNOXOperations;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/KNOXOperations;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/util/KNOXOperations;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;->onRequestKNOXOperation()V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/KNOXOperations;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
