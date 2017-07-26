.class public Lcom/naver/glink/android/sdk/ui/record/b;
.super Ljava/lang/Object;
.source "PlugRecordImpl.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/record/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/naver/glink/android/sdk/ui/record/a;
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/b;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/record/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->CUSTOM:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b(Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)V

    return-void
.end method

.method public a(Landroid/app/Fragment;Lcom/naver/glink/android/sdk/ui/record/c;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->CUSTOM:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    invoke-static {p1, p2, v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Landroid/app/Fragment;Lcom/naver/glink/android/sdk/ui/record/c;Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b()Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;)V

    return-void
.end method

.method public b()Z
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b()Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->CUSTOM:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c(Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)Z

    move-result v0

    return v0
.end method
