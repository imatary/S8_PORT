.class public final enum Lcom/sec/android/gallery3d/eventshare/EventState$State;
.super Ljava/lang/Enum;
.source "EventState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/EventState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/eventshare/EventState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/eventshare/EventState$State;

.field public static final enum COMPLETE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

.field public static final enum FAILED_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

.field public static final enum IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

.field public static final enum READY_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

.field public static final enum RUNNING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

.field public static final enum WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;

    const-string/jumbo v1, "IDLE_STATE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/eventshare/EventState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;

    const-string/jumbo v1, "READY_STATE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/eventshare/EventState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;->READY_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;

    const-string/jumbo v1, "RUNNING_STATE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gallery3d/eventshare/EventState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;->RUNNING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;

    const-string/jumbo v1, "WAITING_STATE"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/gallery3d/eventshare/EventState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;

    const-string/jumbo v1, "COMPLETE_STATE"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/gallery3d/eventshare/EventState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;->COMPLETE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;

    const-string/jumbo v1, "FAILED_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/EventState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;->FAILED_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/gallery3d/eventshare/EventState$State;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->READY_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->RUNNING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->COMPLETE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->FAILED_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/EventState$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/EventState$State;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/eventshare/EventState$State;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/eventshare/EventState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/eventshare/EventState$State;

    return-object v0
.end method
