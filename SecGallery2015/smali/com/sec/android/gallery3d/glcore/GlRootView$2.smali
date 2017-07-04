.class Lcom/sec/android/gallery3d/glcore/GlRootView$2;
.super Ljava/lang/Object;
.source "GlRootView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/glcore/GlRootView;->getClipDataListener()Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetaAreaRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$300(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object p2

    :cond_0
    return-object p2
.end method
