.class public Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
.super Ljava/lang/Object;
.source "SpenSettingRemoverInfo.java"


# static fields
.field public static final CUTTER_TYPE_CUT:I = 0x0

.field public static final CUTTER_TYPE_REMOVE:I = 0x1


# instance fields
.field public size:F

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    return-void
.end method
