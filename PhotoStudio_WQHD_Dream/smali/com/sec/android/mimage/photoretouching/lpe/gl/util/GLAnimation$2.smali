.class Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;
.super Ljava/lang/Object;
.source "GLAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->startAnimation(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
