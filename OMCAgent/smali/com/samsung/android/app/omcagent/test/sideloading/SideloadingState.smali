.class public interface abstract Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;
.super Ljava/lang/Object;
.source "SideloadingState.java"


# static fields
.field public static final CHECK_FILES:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

.field public static final COPY_CONFIGURATIONS:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

.field public static final FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

.field public static final INSTALL_APPS:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

.field public static final UPDATE_CONFIGURATIONS:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;->CHECK_FILES:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    new-instance v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$2;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;->INSTALL_APPS:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    new-instance v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$3;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;->COPY_CONFIGURATIONS:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    new-instance v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$4;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;->UPDATE_CONFIGURATIONS:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    new-instance v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$5;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;->FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;)Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;
.end method
