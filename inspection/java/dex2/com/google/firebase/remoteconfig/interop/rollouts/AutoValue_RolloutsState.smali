.class final Lcom/google/firebase/remoteconfig/interop/rollouts/AutoValue_RolloutsState;
.super Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;
.source "AutoValue_RolloutsState.java"


# instance fields
.field private final rolloutAssignments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;-><init>()V

    if-eqz p1, :cond_8

    .line 16
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/interop/rollouts/AutoValue_RolloutsState;->rolloutAssignments:Ljava/util/Set;

    return-void

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null rolloutAssignments"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 37
    :cond_4
    instance-of v0, p1, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;

    if-eqz v0, :cond_15

    .line 38
    check-cast p1, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;

    .line 39
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/interop/rollouts/AutoValue_RolloutsState;->rolloutAssignments:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;->getRolloutAssignments()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public getRolloutAssignments()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutAssignment;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/interop/rollouts/AutoValue_RolloutsState;->rolloutAssignments:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/interop/rollouts/AutoValue_RolloutsState;->rolloutAssignments:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RolloutsState{rolloutAssignments="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/interop/rollouts/AutoValue_RolloutsState;->rolloutAssignments:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
