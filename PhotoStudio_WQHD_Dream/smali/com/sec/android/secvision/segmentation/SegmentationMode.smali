.class public final enum Lcom/sec/android/secvision/segmentation/SegmentationMode;
.super Ljava/lang/Enum;
.source "SegmentationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/secvision/segmentation/SegmentationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_AUTO_LOOP_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_AUTO_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_AUTO_STROKE_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_AUTO_STROKE_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_INTELLIGENT_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_INTELLIGENT_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_MANUAL_LOOP_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_MANUAL_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_MANUAL_STROKE_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_MANUAL_STROKE_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field public static final enum MODE_NONE:Lcom/sec/android/secvision/segmentation/SegmentationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_AUTO_LOOP_FG"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_AUTO_LOOP_BG"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_AUTO_STROKE_FG"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_STROKE_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_AUTO_STROKE_BG"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_STROKE_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_MANUAL_LOOP_FG"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_MANUAL_LOOP_BG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_LOOP_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_MANUAL_STROKE_FG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_STROKE_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_MANUAL_STROKE_BG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_STROKE_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_INTELLIGENT_FG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_INTELLIGENT_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_INTELLIGENT_BG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_INTELLIGENT_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const-string v1, "MODE_NONE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/android/secvision/segmentation/SegmentationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_NONE:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sec/android/secvision/segmentation/SegmentationMode;

    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_STROKE_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_STROKE_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_LOOP_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_STROKE_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_STROKE_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_INTELLIGENT_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_INTELLIGENT_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_NONE:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->$VALUES:[Lcom/sec/android/secvision/segmentation/SegmentationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/secvision/segmentation/SegmentationMode;
    .locals 1

    const-class v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/secvision/segmentation/SegmentationMode;
    .locals 1

    sget-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->$VALUES:[Lcom/sec/android/secvision/segmentation/SegmentationMode;

    invoke-virtual {v0}, [Lcom/sec/android/secvision/segmentation/SegmentationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/secvision/segmentation/SegmentationMode;

    return-object v0
.end method
