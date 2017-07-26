.class Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1$1$1;
.super Ljava/lang/Object;
.source "GameToolsIntro.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->hide()V

    return-void
.end method
