.class public final enum Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;
.super Ljava/lang/Enum;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTIVITY_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

.field public static final enum ADD_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

.field public static final enum PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    const-string v1, "ADD_MODE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->ADD_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    const-string v1, "PLAY_MODE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->ADD_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->$VALUES:[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->$VALUES:[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    invoke-virtual {v0}, [Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    return-object v0
.end method
