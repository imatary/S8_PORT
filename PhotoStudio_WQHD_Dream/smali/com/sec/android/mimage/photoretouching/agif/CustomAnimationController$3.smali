.class Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$3;
.super Ljava/lang/Object;
.source "CustomAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->onAnimationFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;->onAnimationFinish()V

    return-void
.end method
