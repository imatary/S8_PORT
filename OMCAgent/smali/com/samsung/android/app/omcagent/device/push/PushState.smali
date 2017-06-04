.class public interface abstract Lcom/samsung/android/app/omcagent/device/push/PushState;
.super Ljava/lang/Object;
.source "PushState.java"


# static fields
.field public static final ANALYZE_PUSH_MESSAGE:Lcom/samsung/android/app/omcagent/device/push/PushState;

.field public static final OPERATION_INCREMENTAL_UPDATE:Lcom/samsung/android/app/omcagent/device/push/PushState;

.field public static final PROCESS_CONFIG_UPDATE:Lcom/samsung/android/app/omcagent/device/push/PushState;

.field public static final PROCESS_OMC_UPDATE:Lcom/samsung/android/app/omcagent/device/push/PushState;

.field public static final PUSH_FINISH:Lcom/samsung/android/app/omcagent/device/push/PushState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/PushState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/push/PushState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/push/PushState;->ANALYZE_PUSH_MESSAGE:Lcom/samsung/android/app/omcagent/device/push/PushState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/PushState$2;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/push/PushState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/push/PushState;->PROCESS_OMC_UPDATE:Lcom/samsung/android/app/omcagent/device/push/PushState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/PushState$3;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/push/PushState$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/push/PushState;->OPERATION_INCREMENTAL_UPDATE:Lcom/samsung/android/app/omcagent/device/push/PushState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/PushState$4;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/push/PushState$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/push/PushState;->PROCESS_CONFIG_UPDATE:Lcom/samsung/android/app/omcagent/device/push/PushState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/PushState$5;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/push/PushState$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/push/PushState;->PUSH_FINISH:Lcom/samsung/android/app/omcagent/device/push/PushState;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/samsung/android/app/omcagent/device/push/PushStateContext;)Lcom/samsung/android/app/omcagent/device/push/PushState;
.end method
