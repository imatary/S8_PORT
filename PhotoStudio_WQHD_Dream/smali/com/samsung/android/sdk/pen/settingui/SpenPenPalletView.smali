.class Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView;
.super Landroid/widget/LinearLayout;
.source "SpenPenPalletView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView$onLayoutListner;
    }
.end annotation


# instance fields
.field private mPalletViewOnLayoutListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView$onLayoutListner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView;->mPalletViewOnLayoutListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView$onLayoutListner;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView;->mPalletViewOnLayoutListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView$onLayoutListner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView;->mPalletViewOnLayoutListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView$onLayoutListner;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView$onLayoutListner;->onLayout(ZIIII)V

    :cond_0
    return-void
.end method

.method public setOnLayoutListener(Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView$onLayoutListner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView;->mPalletViewOnLayoutListner:Lcom/samsung/android/sdk/pen/settingui/SpenPenPalletView$onLayoutListner;

    return-void
.end method
