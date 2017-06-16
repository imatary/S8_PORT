.class public Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;
.super Ljava/lang/Object;
.source "SpenSettingSelectionInfo.java"


# static fields
.field public static final TYPE_LASSO:I = 0x0

.field public static final TYPE_RECT:I = 0x1


# instance fields
.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    return-void
.end method
