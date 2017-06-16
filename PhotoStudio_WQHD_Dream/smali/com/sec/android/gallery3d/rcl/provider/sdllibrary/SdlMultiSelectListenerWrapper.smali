.class public Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;
.super Ljava/lang/Object;
.source "SdlMultiSelectListenerWrapper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private mMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

.field private mMultiSelectedListenerCallback:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper$1;-><init>(Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;)Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mMultiSelectedListenerCallback:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    return-object v0
.end method


# virtual methods
.method public OnMultiSelectStart(II)V
    .locals 0

    return-void
.end method

.method public OnMultiSelectStop(II)V
    .locals 0

    return-void
.end method

.method public onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    return-void
.end method

.method public setMultiSelectedListener(Landroid/widget/GridView;Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mMultiSelectedListenerCallback:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    return-void
.end method
