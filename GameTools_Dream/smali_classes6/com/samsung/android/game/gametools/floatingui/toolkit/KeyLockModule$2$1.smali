.class Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2$1;
.super Ljava/lang/Object;
.source "KeyLockModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;->val$recentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;->val$recentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
