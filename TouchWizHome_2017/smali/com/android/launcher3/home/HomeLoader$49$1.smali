.class Lcom/android/launcher3/home/HomeLoader$49$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$49;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$49;

.field final synthetic val$addOrMoveList:Ljava/util/ArrayList;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$49;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->this$1:Lcom/android/launcher3/home/HomeLoader$49;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->val$addOrMoveList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->this$1:Lcom/android/launcher3/home/HomeLoader$49;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->val$addOrMoveList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindUpdatePosition(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
