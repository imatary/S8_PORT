.class public interface abstract Lcom/samsung/android/app/omcagent/update/app/PrepareState;
.super Ljava/lang/Object;
.source "PrepareState.java"


# static fields
.field public static final DOWNLOAD_APPLICATION_ICONS:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

.field public static final FINISH_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

.field public static final START_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/PrepareState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/PrepareState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/PrepareState;->START_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/PrepareState$2;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/PrepareState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/PrepareState;->DOWNLOAD_APPLICATION_ICONS:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/PrepareState$3;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/PrepareState$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/PrepareState;->FINISH_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;)Lcom/samsung/android/app/omcagent/update/app/PrepareState;
.end method
