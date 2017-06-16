.class public Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
.super Ljava/lang/Object;
.source "SpenSettingPenInfo.java"


# instance fields
.field public advancedSetting:Ljava/lang/String;

.field public color:I

.field public isCurvable:Z

.field public name:Ljava/lang/String;

.field public size:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    return-void
.end method
