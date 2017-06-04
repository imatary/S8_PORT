.class Lcom/sec/android/gallery3d/ui/SlotView$Spec;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Spec"
.end annotation


# instance fields
.field private final rowsLand:I

.field private final rowsPort:I

.field slotGap:I

.field slotHeight:I

.field private final slotHeightAdditional:I

.field slotWidth:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotHeightAdditional:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    return-void
.end method
