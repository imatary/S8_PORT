.class Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$1;
.super Ljava/lang/Object;
.source "DefaultButtonsListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$DefaultTouchInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$1;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$1$1;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;->access$002(Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    return-void
.end method
