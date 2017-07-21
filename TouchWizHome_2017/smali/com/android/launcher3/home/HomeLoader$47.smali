.class Lcom/android/launcher3/home/HomeLoader$47;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addHotseatItemByComponentName(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$index:I

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$47;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput p4, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HomeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget v3, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$index:I

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/home/HomeLoader;->access$11900(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    goto :goto_0
.end method
