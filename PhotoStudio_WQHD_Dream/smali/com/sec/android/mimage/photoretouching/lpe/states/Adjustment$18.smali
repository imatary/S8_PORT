.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$18;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->deleteOriSmart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartId:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->delete(I)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, -0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartId:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3502(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    return-void
.end method
