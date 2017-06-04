.class Lcom/samsung/android/app/omcagent/log/MasterLogProvider$1;
.super Ljava/lang/Object;
.source "MasterLogProvider.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/log/MasterLogProvider;->makePreferenceFileLsit()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/log/MasterLogProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/log/MasterLogProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/log/MasterLogProvider$1;->this$0:Lcom/samsung/android/app/omcagent/log/MasterLogProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
