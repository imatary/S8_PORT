.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$36;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateNoItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$36;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$36;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$36;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;->onGenericMotionCancel()V

    :cond_0
    return v1
.end method

.method public onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$36;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$36;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;->onGenericMotionEnter(I)V

    :cond_0
    return v2
.end method
