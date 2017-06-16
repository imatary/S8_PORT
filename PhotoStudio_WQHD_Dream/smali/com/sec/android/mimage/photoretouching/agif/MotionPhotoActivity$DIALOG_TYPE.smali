.class final enum Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;
.super Ljava/lang/Enum;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DIALOG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

.field public static final enum RETURN_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

.field public static final enum SAVE_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

.field public static final enum SAVE_DISCARD_EXIT:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    const-string v1, "SAVE_DIALOG"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    const-string v1, "RETURN_DIALOG"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->RETURN_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    const-string v1, "SAVE_DISCARD_EXIT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DISCARD_EXIT:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->RETURN_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DISCARD_EXIT:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->$VALUES:[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->$VALUES:[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    invoke-virtual {v0}, [Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    return-object v0
.end method
