.class Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$1;
.super Ljava/lang/Object;
.source "GameToolsIntro.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->show(Landroid/graphics/Point;Landroid/graphics/Point;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

.field final synthetic val$handle:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$1;->val$handle:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$1;->val$handle:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;Landroid/view/View;)V

    return-void
.end method
