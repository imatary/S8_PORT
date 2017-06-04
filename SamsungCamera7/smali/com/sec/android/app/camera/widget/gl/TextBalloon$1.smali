.class Lcom/sec/android/app/camera/widget/gl/TextBalloon$1;
.super Ljava/lang/Object;
.source "TextBalloon.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/TextBalloon;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/TextBalloon;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/TextBalloon;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonCloseButtonClickListener:Lcom/sec/android/app/camera/widget/gl/TextBalloon$TextBalloonCloseButtonClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonCloseButtonClickListener:Lcom/sec/android/app/camera/widget/gl/TextBalloon$TextBalloonCloseButtonClickListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon$TextBalloonCloseButtonClickListener;->onClick()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->hideTextBalloon()V

    const/4 v0, 0x1

    return v0
.end method
