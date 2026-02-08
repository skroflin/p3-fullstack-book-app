import { Text, View, StyleSheet } from 'react-native';
import { Button, Card } from 'react-native-paper';

export default function MainScreen() {
    return (
        <View style={styles.container}>
            <Card>
                <Card.Title title="Book Rest API" subtitle="Wip" />
                <Card.Content>
                    <Text>
                        bla bla bla
                    </Text>
                </Card.Content>
                <Card.Actions>
                    <Button mode="contained" onPress={() => console.log('Fetch books')}>
                        Fetch books
                    </Button>
                </Card.Actions>
            </Card>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        padding: 20
    }
})