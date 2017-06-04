.class Lcom/sec/android/gallery3d/glcore/GlRootView$3;
.super Ljava/lang/Object;
.source "GlRootView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/GLContextInterface$RootViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/glcore/GlRootView;->setGLContextListener()V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$3;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGLRootView()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$3;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method
