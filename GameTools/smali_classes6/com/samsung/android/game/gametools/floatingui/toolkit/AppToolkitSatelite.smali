.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/AppToolkitSatelite;
.super Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;
.source "AppToolkitSatelite.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;Z)V

    return-void
.end method


# virtual methods
.method public getWidgets()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->getWidgets()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/AppToolkitSatelite;->tv_no_alerts:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
