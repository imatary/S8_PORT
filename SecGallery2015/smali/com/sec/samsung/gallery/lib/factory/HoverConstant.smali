.class public Lcom/sec/samsung/gallery/lib/factory/HoverConstant;
.super Ljava/lang/Object;
.source "HoverConstant.java"


# static fields
.field public static final AIR_VIEW_MODE:Ljava/lang/String;

.field public static final FINGER_AIR_VIEW:Ljava/lang/String;

.field public static final FINGER_AIR_VIEW_INFORMATION_PREVIEW:Ljava/lang/String;

.field public static final FINGER_AIR_VIEW_SOUND_AND_HAPTIC_FEEDBACK:Ljava/lang/String;

.field public static final MOUSE_HOVERING:Ljava/lang/String;

.field public static final MOUSE_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String;

.field public static final PEN_HOVERING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "pen_hovering"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->PEN_HOVERING:Ljava/lang/String;

    const-string/jumbo v0, "deleted feature"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->FINGER_AIR_VIEW:Ljava/lang/String;

    const-string/jumbo v0, "deleted feature"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->FINGER_AIR_VIEW_INFORMATION_PREVIEW:Ljava/lang/String;

    const-string/jumbo v0, "deleted feature"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->FINGER_AIR_VIEW_SOUND_AND_HAPTIC_FEEDBACK:Ljava/lang/String;

    const-string/jumbo v0, "deleted feature"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->AIR_VIEW_MODE:Ljava/lang/String;

    const-string/jumbo v0, "deleted feature"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->MOUSE_HOVERING:Ljava/lang/String;

    const-string/jumbo v0, "deleted feature"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->MOUSE_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
