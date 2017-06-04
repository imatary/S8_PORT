.class Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;
.super Ljava/lang/Object;
.source "GameToolsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->floatingToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

.field final synthetic val$duration:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x103012b

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;->val$msg:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;->val$duration:I

    sget-object v4, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_DOWN:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    new-instance v5, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3$1;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;Landroid/view/View$OnClickListener;)V

    return-void
.end method
