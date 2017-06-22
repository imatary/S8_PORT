.class public final Lcom/samsung/android/sdk/rclcamera/impl/se/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static __cp__cam_start:I

.field public static __cp__cam_stop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/samsung/android/sdk/rclcamera/R$raw;->__cp__cam_start:I

    sput v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$raw;->__cp__cam_start:I

    sget v0, Lcom/samsung/android/sdk/rclcamera/R$raw;->__cp__cam_stop:I

    sput v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$raw;->__cp__cam_stop:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
