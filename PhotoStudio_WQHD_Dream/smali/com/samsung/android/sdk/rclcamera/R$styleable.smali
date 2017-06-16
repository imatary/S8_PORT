.class public final Lcom/samsung/android/sdk/rclcamera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final StrokeTextView:[I

.field public static final StrokeTextView_textStroke:I = 0x0

.field public static final StrokeTextView_textStrokeColor:I = 0x2

.field public static final StrokeTextView_textStrokeWidth:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/R$styleable;->StrokeTextView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f01007d
        0x7f01007e
        0x7f01007f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
