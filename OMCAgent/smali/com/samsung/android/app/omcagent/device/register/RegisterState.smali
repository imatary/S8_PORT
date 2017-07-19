.class public interface abstract Lcom/samsung/android/app/omcagent/device/register/RegisterState;
.super Ljava/lang/Object;
.source "RegisterState.java"


# static fields
.field public static final CHECK_REGISTER_DEVICE:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

.field public static final CHECK_REGISTER_POLLING:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

.field public static final CHECK_REGISTER_PUSH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

.field public static final REGISTERING_DEVICE:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

.field public static final REGISTERING_PUSH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

.field public static final REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

.field public static final REGISTER_POLLING:Lcom/samsung/android/app/omcagent/device/register/RegisterState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/register/RegisterState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->CHECK_REGISTER_DEVICE:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$2;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/register/RegisterState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->REGISTERING_DEVICE:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$3;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/register/RegisterState$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->CHECK_REGISTER_POLLING:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$4;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/register/RegisterState$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->REGISTER_POLLING:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$5;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/register/RegisterState$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->CHECK_REGISTER_PUSH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->REGISTERING_PUSH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    new-instance v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$7;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/register/RegisterState$7;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;)Lcom/samsung/android/app/omcagent/device/register/RegisterState;
.end method
