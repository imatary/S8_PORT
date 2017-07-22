.class public final Lcom/google/android/gms/fitness/data/Field;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACCURACY:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_BPM:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_CIRCUMFERENCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_DURATION:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_EXERCISE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_FOOD_ITEM:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_HEIGHT:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_HIGH_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_HIGH_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_LOW_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_LOW_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_NUM_SEGMENTS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_NUTRIENTS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_PERCENTAGE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_REPETITIONS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_RESISTANCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_RESISTANCE_TYPE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_RPM:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_SPEED:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_WATTS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_WEIGHT:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawM:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawN:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawO:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawP:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawQ:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawR:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawS:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawT:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawU:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawV:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawW:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawX:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzawY:Lcom/google/android/gms/fitness/data/Field;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mVersionCode:I

.field private final zzawZ:I

.field private final zzaxa:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdo(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "confidence"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "activity_confidence"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawM:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "steps"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdo(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "duration"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdo(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_DURATION:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "activity_duration"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawN:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "activity_duration.ascending"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawO:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "activity_duration.descending"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawP:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "bpm"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_BPM:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "latitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "longitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "accuracy"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACCURACY:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "altitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdq(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "distance"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "height"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_HEIGHT:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "weight"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_WEIGHT:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "circumference"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_CIRCUMFERENCE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "percentage"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_PERCENTAGE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "speed"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_SPEED:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "rpm"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_RPM:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "revolutions"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdo(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "calories"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "watts"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_WATTS:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "meal_type"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdo(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "food_item"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdr(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_FOOD_ITEM:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "nutrients"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_NUTRIENTS:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "elevation.change"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawQ:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "elevation.gain"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawR:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "elevation.loss"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawS:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "floors"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawT:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "floor.gain"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawU:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "floor.loss"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawV:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "exercise"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdr(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_EXERCISE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "repetitions"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdo(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_REPETITIONS:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "resistance"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_RESISTANCE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "resistance_type"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdo(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_RESISTANCE_TYPE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "num_segments"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdo(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_NUM_SEGMENTS:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "average"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "max"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "min"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "low_latitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LOW_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "low_longitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LOW_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "high_latitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_HIGH_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "high_longitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_HIGH_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "x"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawW:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "y"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawX:Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v0, "z"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzawY:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Field;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/fitness/data/Field;->zzawZ:I

    iput-object p4, p0, Lcom/google/android/gms/fitness/data/Field;->zzaxa:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(ILjava/lang/String;ILjava/lang/Boolean;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/fitness/data/Field;-><init>(ILjava/lang/String;ILjava/lang/Boolean;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Field;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/fitness/data/Field;->zzawZ:I

    iget v2, p1, Lcom/google/android/gms/fitness/data/Field;->zzawZ:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static zzdo(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static zzdp(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static zzdq(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 3

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    return-object v0
.end method

.method private static zzdr(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static zzds(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/Field;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Field;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Field;->zza(Lcom/google/android/gms/fitness/data/Field;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->zzawZ:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOptional()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->zzaxa:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "%s(%s)"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    aput-object v3, v2, v0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->zzawZ:I

    if-eq v0, v4, :cond_0

    const-string/jumbo v0, "f"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "i"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzj;->zza(Lcom/google/android/gms/fitness/data/Field;Landroid/os/Parcel;I)V

    return-void
.end method
